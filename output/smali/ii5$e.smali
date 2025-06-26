.class public Lii5$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld45;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lii5;->u(FLe45;)Le45;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld45<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le45;

.field public final synthetic b:F

.field public final synthetic c:Lii5;


# direct methods
.method public constructor <init>(Lii5;Le45;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lii5$e;->c:Lii5;

    iput-object p2, p0, Lii5$e;->a:Le45;

    iput p3, p0, Lii5$e;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le45;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lii5$e;->c:Lii5;

    .line 3
    iget-object v0, v0, Lii5;->e:Lwh5;

    .line 4
    new-instance v1, Lri5;

    invoke-direct {v1, p0, p1}, Lri5;-><init>(Lii5$e;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lwh5;->c(Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1

    return-object p1
.end method
