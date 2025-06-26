.class public final Lar3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz63;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz63<",
        "Ljava/lang/Integer;",
        "Lsp3$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lsp3$a;->i(I)Lsp3$a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lsp3$a;->f:Lsp3$a;

    :cond_0
    return-object p1
.end method
