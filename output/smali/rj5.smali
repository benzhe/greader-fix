.class public Lrj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw35<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lf45;


# direct methods
.method public constructor <init>(Lf45;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrj5;->a:Lf45;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le45;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrj5;->a:Lf45;

    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf45;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrj5;->a:Lf45;

    invoke-virtual {p1}, Le45;->k()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lf45;->a(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
