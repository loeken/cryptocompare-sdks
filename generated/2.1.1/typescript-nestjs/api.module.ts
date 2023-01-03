import { DynamicModule, Module, Global } from '@nestjs/common';
import { HttpModule, HttpService } from '@nestjs/axios';
import { Configuration } from './configuration';

import { AssetService } from './api/asset.service';
import { FuturesService } from './api/futures.service';
import { NewsService } from './api/news.service';
import { OverviewService } from './api/overview.service';
import { ReferenceRatesService } from './api/referenceRates.service';
import { SpotService } from './api/spot.service';

@Global()
@Module({
  imports:      [ HttpModule ],
  exports:      [
    AssetService,
    FuturesService,
    NewsService,
    OverviewService,
    ReferenceRatesService,
    SpotService
  ],
  providers: [
    AssetService,
    FuturesService,
    NewsService,
    OverviewService,
    ReferenceRatesService,
    SpotService
  ]
})
export class ApiModule {
    public static forRoot(configurationFactory: () => Configuration): DynamicModule {
        return {
            module: ApiModule,
            providers: [ { provide: Configuration, useFactory: configurationFactory } ]
        };
    }

    constructor( httpService: HttpService) { }
}
