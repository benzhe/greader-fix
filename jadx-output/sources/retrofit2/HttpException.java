package retrofit2;

import java.util.Objects;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class HttpException extends RuntimeException {
    private final int code;
    private final String message;
    private final transient Response<?> response;

    public HttpException(Response<?> response) {
        super(getMessage(response));
        this.code = response.code();
        this.message = response.message();
        this.response = response;
    }

    private static String getMessage(Response<?> response) {
        Objects.requireNonNull(response, "response == null");
        return "HTTP " + response.code() + StringUtils.SPACE + response.message();
    }

    public int code() {
        return this.code;
    }

    public String message() {
        return this.message;
    }

    public Response<?> response() {
        return this.response;
    }
}
