export * from './assetApi';
import { AssetApi } from './assetApi';
export * from './futuresApi';
import { FuturesApi } from './futuresApi';
export * from './newsApi';
import { NewsApi } from './newsApi';
export * from './overviewApi';
import { OverviewApi } from './overviewApi';
export * from './referenceRatesApi';
import { ReferenceRatesApi } from './referenceRatesApi';
export * from './spotApi';
import { SpotApi } from './spotApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [AssetApi, FuturesApi, NewsApi, OverviewApi, ReferenceRatesApi, SpotApi];
