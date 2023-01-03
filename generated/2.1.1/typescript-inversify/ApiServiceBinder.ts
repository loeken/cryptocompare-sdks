import {interfaces} from 'inversify';

import { AssetService } from './api/asset.service';
import { FuturesService } from './api/futures.service';
import { NewsService } from './api/news.service';
import { OverviewService } from './api/overview.service';
import { ReferenceRatesService } from './api/referenceRates.service';
import { SpotService } from './api/spot.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<AssetService>('AssetService').to(AssetService).inSingletonScope();
        container.bind<FuturesService>('FuturesService').to(FuturesService).inSingletonScope();
        container.bind<NewsService>('NewsService').to(NewsService).inSingletonScope();
        container.bind<OverviewService>('OverviewService').to(OverviewService).inSingletonScope();
        container.bind<ReferenceRatesService>('ReferenceRatesService').to(ReferenceRatesService).inSingletonScope();
        container.bind<SpotService>('SpotService').to(SpotService).inSingletonScope();
    }
}
