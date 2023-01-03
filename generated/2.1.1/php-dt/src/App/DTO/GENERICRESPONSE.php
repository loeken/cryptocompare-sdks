<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GENERICRESPONSE
{
    /**
     * @DTA\Data(field="Data", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\GENERICRESPONSEData::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\GENERICRESPONSEData::class})
     * @var \App\DTO\GENERICRESPONSEData|null
     */
    public $data;

    /**
     * @DTA\Data(field="Err", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $err;

}
