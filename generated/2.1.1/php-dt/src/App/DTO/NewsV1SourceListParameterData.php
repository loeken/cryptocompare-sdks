<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for news_v1_source_list
 */
class NewsV1SourceListParameterData
{
    /**
     * The article source Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @DTA\Data(subset="query", field="lang", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1})
     * @var string|null
     */
    public $lang;

    /**
     * RSS, API, TWITTER
     * @DTA\Data(subset="query", field="type", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1})
     * @var string|null
     */
    public $type;

    /**
     * The status for the  article source entry. Allowed values: ACTIVE, INACTIVE
     * @DTA\Data(subset="query", field="status", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1})
     * @var string|null
     */
    public $status;

}
