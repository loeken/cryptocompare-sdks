<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 * Parameters for news_v1_article_list
 */
class NewsV1ArticleListParameterData
{
    /**
     * Get articles from specific sources; either by their ids or keys
     * @DTA\Data(subset="query", field="source_ids", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @DTA\Validator(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @var string[]|null
     */
    public $source_ids;

    /**
     * Articles published on or before this timestamp
     * @DTA\Data(subset="query", field="to_ts", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"int"})
     * @var int|null
     */
    public $to_ts;

    /**
     * News article categories to return
     * @DTA\Data(subset="query", field="categories", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @DTA\Validator(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv", "max_items":200})
     * @var string[]|null
     */
    public $categories;

    /**
     * The article Preferred language - English (EN), Portuguese (PT), Espanol (ES)
     * @DTA\Data(subset="query", field="lang", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="QueryStringScalar", options={"type":"string"})
     * @DTA\Validator(subset="query", name="StringLength", options={"min":1})
     * @var string|null
     */
    public $lang;

    /**
     * News article categories to exclude from results
     * @DTA\Data(subset="query", field="exclude_categories", nullable=true)
     * @DTA\Strategy(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv"})
     * @DTA\Validator(subset="query", name="QueryStringScalarArray", options={"type":"string", "format":"csv", "max_items":200})
     * @var string[]|null
     */
    public $exclude_categories;

}
