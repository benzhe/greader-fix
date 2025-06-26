.class public Lkj6;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkj6$a;
    }
.end annotation


# instance fields
.field public e:Lak6;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lkj6$a;
    .locals 2

    .line 1
    new-instance v0, Lkj6$a;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lkj6$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lkj6;
    .locals 2

    .line 1
    new-instance v0, Lkj6;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lkj6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
