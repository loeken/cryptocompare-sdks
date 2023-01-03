<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class SPOTINSTRUMENTMARKETDATARESPONSEErr
{
    /**
     * A message describing the error
     * @DTA\Data(field="message", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $message;

    /**
     * @DTA\Data(field="other_info", nullable=true)
     * @DTA\Strategy(name="Object", options={"type":\App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo::class})
     * @DTA\Validator(name="TypeCompliant", options={"type":\App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo::class})
     * @var \App\DTO\SPOTINSTRUMENTMARKETDATARESPONSEErrOtherInfo|null
     */
    public $other_info;

    /**
     * A public facing error type. If you want to treat a specific error use the type.
     * @DTA\Data(field="type", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"int"})
     * @var int|null
     */
    public $type;

}
