<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for futures_v1_markets
 */
class FuturesV1MarketsParameterData
{
    /**
     * The exchange to obtain data from
     * @DTA\Data(subset="query", field="market", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":0, "max":30})
     * @var string|null
     */
    public $market;

}
