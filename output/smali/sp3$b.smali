.class public final Lsp3$b;
.super Ls63$b;
.source "SourceFile"

# interfaces
.implements Lf83;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls63$b<",
        "Lsp3;",
        "Lsp3$b;",
        ">;",
        "Lf83;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrq3;)V
    .locals 0

    .line 1
    invoke-static {}, Lsp3;->x()Lsp3;

    move-result-object p1

    invoke-direct {p0, p1}, Ls63$b;-><init>(Ls63;)V

    return-void
.end method
