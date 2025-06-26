.class public abstract Lsp7;
.super Lcp7;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcp7;->f:Lcp7$a;

    .line 2
    sget-object v1, Lrp7;->e:Lrp7;

    const-string v2, "baseKey"

    .line 3
    invoke-static {v0, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {v1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcp7;-><init>()V

    return-void
.end method
