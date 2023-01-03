<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for index_cc_v1_historical_messages_hour
 */
class IndexCcV1HistoricalMessagesHourParameterData
{
    /**
     * The exchange to obtain data from
     * @DTA\Data(subset="query", field="market")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":2, "max":30})
     * @var string|null
     */
    public $market;

    /**
     * The mapping priority of the instrument. It is set to CHECK_MAPPED_FIRST by default. It can be one of the following: CHECK_MAPPED_FIRST,CHECK_UNMAPPED_FIRST
     * @DTA\Data(subset="query", field="mapping_priority", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $mapping_priority;

    /**
     * Unix timestamp in seconds for the hour containing the index updates you are interested in. You can pass any timestamp in the hour but we will round it down the the full hour timestmap and return all index updates in that hour.
     * @DTA\Data(subset="query", field="hour_ts", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="GreaterThan", options={"min":0, "inclusive":true})
     * @var int|null
     */
    public $hour_ts;

    /**
     * If set to false (default) then when there are no items to return, you will get a response status code of 200 and an empty JSON array or a CSV file with just the header. If set to true then when there are no items you will get a 404 status code for both JSON and CSV response_formats.
     * @DTA\Data(subset="query", field="return_404_on_empty_response", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"bool"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"bool"})
     * @var bool|null
     */
    public $return_404_on_empty_response;

    /**
     * The format of the data response in uppercase. It can be one of the following: JSON,CSV
     * @DTA\Data(subset="query", field="response_format", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @var string|null
     */
    public $response_format;

    /**
     * The mapped or unmapped instrument to retrieve on a specific market. We first check the instrument against the mapped list and then against the unmapped list          but you can use the mapping_priority param to check the unmapped list first.
     * @DTA\Data(subset="query", field="instrument")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1, "max":500})
     * @var string|null
     */
    public $instrument;

}
