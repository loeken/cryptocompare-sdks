<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for asset_v1_data_by_address
 */
class AssetV1DataByAddressParameterData
{
    /**
     * @DTA\Data(subset="query", field="address")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1, "max":500})
     * @var string|null
     */
    public $address;

    /**
     * @DTA\Data(subset="query", field="groups", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":0, "max":2000})
     * @var string|null
     */
    public $groups;

    /**
     * @DTA\Data(subset="query", field="chain_symbol")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1, "max":100})
     * @var string|null
     */
    public $chain_symbol;

}
