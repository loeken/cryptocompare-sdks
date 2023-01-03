<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for asset_v1_data_by_symbol
 */
class AssetV1DataBySymbolParameterData
{
    /**
     * @DTA\Data(subset="query", field="groups", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":0, "max":2000})
     * @var string|null
     */
    public $groups;

    /**
     * The asset symbol you are interested in
     * @DTA\Data(subset="query", field="asset_symbol")
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1, "max":100})
     * @var string|null
     */
    public $asset_symbol;

}
