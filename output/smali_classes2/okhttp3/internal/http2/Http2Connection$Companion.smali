.class public final Lokhttp3/internal/http2/Http2Connection$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lgm7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_SETTINGS()Lokhttp3/internal/http2/Settings;
    .locals 1

    .line 1
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->access$getDEFAULT_SETTINGS$cp()Lokhttp3/internal/http2/Settings;

    move-result-object v0

    return-object v0
.end method
