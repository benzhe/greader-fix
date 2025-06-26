.class public final Lmf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmf0<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field public final a:Lbf0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf0<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Lef0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef0<",
            "TI;>;"
        }
    .end annotation
.end field

.field public final c:Lyd0;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyd0;Ljava/lang/String;Lef0;Lbf0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyd0;",
            "Ljava/lang/String;",
            "Lef0<",
            "TI;>;",
            "Lbf0<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmf0;->c:Lyd0;

    .line 3
    iput-object p2, p0, Lmf0;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lmf0;->b:Lef0;

    .line 5
    iput-object p4, p0, Lmf0;->a:Lbf0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Law2<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lmf0;->b(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Law2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Law2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lxs0;

    invoke-direct {v0}, Lxs0;-><init>()V

    .line 2
    iget-object v1, p0, Lmf0;->c:Lyd0;

    .line 3
    invoke-virtual {v1}, Lyd0;->b()Loe0;

    move-result-object v1

    .line 4
    new-instance v2, Llf0;

    invoke-direct {v2, p0, v1, p1, v0}, Llf0;-><init>(Lmf0;Loe0;Ljava/lang/Object;Lxs0;)V

    new-instance p1, Lof0;

    invoke-direct {p1, v0, v1}, Lof0;-><init>(Lxs0;Loe0;)V

    invoke-virtual {v1, v2, p1}, Lat0;->c(Lbt0;Lzs0;)V

    return-object v0
.end method
