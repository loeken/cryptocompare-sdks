<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class Error
{
    /**
     * @DTA\Data(field="Data", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"object"})
     * @var object|null
     */
    public $data;

    /**
     * @DTA\Data(field="Err", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\ErrorErr::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\ErrorErr::class})
     * @var \App\DTO\ErrorErr|null
     */
    public $err;

}
