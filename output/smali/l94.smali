.class public Ll94;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ll94;
    .locals 2

    new-instance v0, Ll94;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 1
    invoke-direct {v0, v1}, Ll94;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Ll94;
    .locals 2

    new-instance v0, Ll94;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 1
    invoke-direct {v0, v1}, Ll94;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Ll94;
    .locals 2

    new-instance v0, Ll94;

    const-string v1, "Failed to parse the message."

    .line 1
    invoke-direct {v0, v1}, Ll94;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Ll94;
    .locals 2

    new-instance v0, Ll94;

    const-string v1, "Protocol message had invalid UTF-8."

    .line 1
    invoke-direct {v0, v1}, Ll94;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
