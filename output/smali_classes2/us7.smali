.class public final Lus7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lbt7;->i:Lbt7$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lbt7;->g:[B

    .line 3
    sput-object v1, Lus7;->a:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-virtual {v0, v1}, Lbt7$a;->c(Ljava/lang/String;)Lbt7;

    return-void
.end method
