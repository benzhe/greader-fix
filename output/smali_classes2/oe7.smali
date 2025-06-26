.class public final Loe7;
.super Lmb7;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmb7<",
        "Ljava/lang/Object;",
        ">;",
        "Lld7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lmb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loe7;

    invoke-direct {v0}, Loe7;-><init>()V

    sput-object v0, Loe7;->f:Lmb7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmb7;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Lx38;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx38<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmi7;->e:Lmi7;

    invoke-interface {p1, v0}, Lx38;->e(Ly38;)V

    .line 2
    invoke-interface {p1}, Lx38;->a()V

    return-void
.end method
