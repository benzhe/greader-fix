.class public final Lokhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Header$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Header$Companion;

.field public static final PSEUDO_PREFIX:Lbt7;

.field public static final RESPONSE_STATUS:Lbt7;

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"

.field public static final TARGET_AUTHORITY:Lbt7;

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"

.field public static final TARGET_METHOD:Lbt7;

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"

.field public static final TARGET_PATH:Lbt7;

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"

.field public static final TARGET_SCHEME:Lbt7;

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"


# instance fields
.field public final hpackSize:I

.field public final name:Lbt7;

.field public final value:Lbt7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/http2/Header$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Header$Companion;-><init>(Lgm7;)V

    sput-object v0, Lokhttp3/internal/http2/Header;->Companion:Lokhttp3/internal/http2/Header$Companion;

    .line 1
    sget-object v0, Lbt7;->i:Lbt7$a;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lbt7;

    const-string v1, ":status"

    .line 2
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lbt7;

    const-string v1, ":method"

    .line 3
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lbt7;

    const-string v1, ":path"

    .line 4
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lbt7;

    const-string v1, ":scheme"

    .line 5
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    sput-object v1, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lbt7;

    const-string v1, ":authority"

    .line 6
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lbt7;

    return-void
.end method

.method public constructor <init>(Lbt7;Lbt7;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    iput-object p2, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    .line 2
    invoke-virtual {p1}, Lbt7;->t()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lbt7;->t()I

    move-result p2

    add-int/2addr p1, p2

    .line 3
    iput p1, p0, Lokhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lbt7;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lbt7;->i:Lbt7$a;

    invoke-virtual {v0, p2}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Lbt7;Lbt7;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lbt7;->i:Lbt7$a;

    invoke-virtual {v0, p1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object p1

    invoke-virtual {v0, p2}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Lbt7;Lbt7;)V

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/internal/http2/Header;Lbt7;Lbt7;ILjava/lang/Object;)Lokhttp3/internal/http2/Header;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Header;->copy(Lbt7;Lbt7;)Lokhttp3/internal/http2/Header;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lbt7;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    return-object v0
.end method

.method public final component2()Lbt7;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    return-object v0
.end method

.method public final copy(Lbt7;Lbt7;)Lokhttp3/internal/http2/Header;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/internal/http2/Header;

    invoke-direct {v0, p1, p2}, Lokhttp3/internal/http2/Header;-><init>(Lbt7;Lbt7;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lokhttp3/internal/http2/Header;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/internal/http2/Header;

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    iget-object v1, p1, Lokhttp3/internal/http2/Header;->name:Lbt7;

    invoke-static {v0, v1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    iget-object p1, p1, Lokhttp3/internal/http2/Header;->value:Lbt7;

    invoke-static {v0, p1}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbt7;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lbt7;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/internal/http2/Header;->name:Lbt7;

    invoke-virtual {v1}, Lbt7;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/http2/Header;->value:Lbt7;

    invoke-virtual {v1}, Lbt7;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
