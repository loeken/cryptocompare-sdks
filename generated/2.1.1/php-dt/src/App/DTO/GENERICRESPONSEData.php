<?php
declare(strict_types=1);

namespace App\DTO;

use Articus\DataTransfer\Annotation as DTA;

/**
 */
class GENERICRESPONSEData
{
    /**
     * The endpoint does not have a reponse defined
     * @DTA\Data(field="NO_DATA", nullable=true)
     * @DTA\Validator(name="Scalar", options={"type":"string"})
     * @var string|null
     */
    public $no_data;

}
