<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTMETADATARESPONSE
{
    /**
     * @DTA\Data(field="Data", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection606::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection606::class})
     * @var \App\DTO\Collection606|null
     */
    public $data;

    /**
     * @DTA\Data(field="Err", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErr::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErr::class})
     * @var \App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErr|null
     */
    public $err;

}
