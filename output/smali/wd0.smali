.class public final Lwd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkb0<",
        "Lxw0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lkb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkb0<",
            "-",
            "Lwe0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lrd0;


# direct methods
.method public constructor <init>(Lrd0;Lkb0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkb0<",
            "-",
            "Lwe0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwd0;->b:Lrd0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lwd0;->a:Lkb0;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lxw0;

    .line 2
    iget-object p1, p0, Lwd0;->a:Lkb0;

    iget-object v0, p0, Lwd0;->b:Lrd0;

    invoke-interface {p1, v0, p2}, Lkb0;->a(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
