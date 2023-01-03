<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for index_cc_v1_markets_instruments_unmapped
 */
class IndexCcV1MarketsInstrumentsUnmappedParameterData
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

    /**
     * The status of the instrument, can be one of the following: ACTIVE, IGNORED, RETIRED, EXPIRED
     * @DTA\Data(subset="query", field="instrument_status", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @DTA\Validator(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @var string[]|null
     */
    public $instrument_status;

    /**
     * The unmapped instrument to retrieve on a specific market.
     * @DTA\Data(subset="query", field="instrument", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":0, "max":30})
     * @var string|null
     */
    public $instrument;

}
