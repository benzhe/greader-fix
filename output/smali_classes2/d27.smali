.class public final Ld27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu17;


# instance fields
.field public final a:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld27;->a:Lokhttp3/Call$Factory;

    .line 3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    return-void
.end method
