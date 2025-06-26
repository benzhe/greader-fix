.class public final Lz60;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le60;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le60<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html"

    .line 1
    invoke-static {v0, v1}, Le60;->d(Ljava/lang/String;Ljava/lang/String;)Le60;

    move-result-object v0

    sput-object v0, Lz60;->a:Le60;

    return-void
.end method
