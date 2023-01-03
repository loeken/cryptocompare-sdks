import { RequestContext } from "../http/http";

/**
 * Interface authentication schemes.
 */
export interface SecurityAuthentication {
    /*
     * @return returns the name of the security authentication as specified in OAI
     */
    getName(): string;

    /**
     * Applies the authentication scheme to the request context
     *
     * @params context the request context which should use this authentication scheme
     */
    applySecurityAuthentication(context: RequestContext): void | Promise<void>;
}

export interface TokenProvider {
  getToken(): Promise<string> | string;
}

/**
 * Applies apiKey authentication to the request context.
 */
export class ApiKeyHeaderAuthentication implements SecurityAuthentication {
    /**
     * Configures this api key authentication with the necessary properties
     *
     * @param apiKey: The api key to be used for every request
     */
    public constructor(private apiKey: string) {}

    public getName(): string {
        return "api_key_header";
    }

    public applySecurityAuthentication(context: RequestContext) {
        context.setHeaderParam("authorization", this.apiKey);
    }
}

/**
 * Applies apiKey authentication to the request context.
 */
export class ApiKeyQueryAuthentication implements SecurityAuthentication {
    /**
     * Configures this api key authentication with the necessary properties
     *
     * @param apiKey: The api key to be used for every request
     */
    public constructor(private apiKey: string) {}

    public getName(): string {
        return "api_key_query";
    }

    public applySecurityAuthentication(context: RequestContext) {
        context.setQueryParam("api_key", this.apiKey);
    }
}


export type AuthMethods = {
    "default"?: SecurityAuthentication,
    "api_key_header"?: SecurityAuthentication,
    "api_key_query"?: SecurityAuthentication
}

export type ApiKeyConfiguration = string;
export type HttpBasicConfiguration = { "username": string, "password": string };
export type HttpBearerConfiguration = { tokenProvider: TokenProvider };
export type OAuth2Configuration = { accessToken: string };

export type AuthMethodsConfiguration = {
    "default"?: SecurityAuthentication,
    "api_key_header"?: ApiKeyConfiguration,
    "api_key_query"?: ApiKeyConfiguration
}

/**
 * Creates the authentication methods from a swagger description.
 *
 */
export function configureAuthMethods(config: AuthMethodsConfiguration | undefined): AuthMethods {
    let authMethods: AuthMethods = {}

    if (!config) {
        return authMethods;
    }
    authMethods["default"] = config["default"]

    if (config["api_key_header"]) {
        authMethods["api_key_header"] = new ApiKeyHeaderAuthentication(
            config["api_key_header"]
        );
    }

    if (config["api_key_query"]) {
        authMethods["api_key_query"] = new ApiKeyQueryAuthentication(
            config["api_key_query"]
        );
    }

    return authMethods;
}