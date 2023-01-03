<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class ErrorErrOtherInfo
{
    /**
     * The parameter that is resposible for the error
     * @DTA\Data(field="param", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $param;

    /**
     * The values resposible for the error
     * @DTA\Data(field="values", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\Collection658::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\Collection658::class})
     * @var \App\DTO\Collection658|null
     */
    public $values;

}
