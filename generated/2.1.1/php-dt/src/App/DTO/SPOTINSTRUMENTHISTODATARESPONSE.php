<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTHISTODATARESPONSE
{
    /**
     * @DTA\Data(field="Data", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection564::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection564::class})
     * @var \App\DTO\Collection564|null
     */
    public $data;

    /**
     * @DTA\Data(field="Err", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $err;

}
