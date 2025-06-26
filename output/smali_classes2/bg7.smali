.class public final Lbg7;
.super Lrb7;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrb7<",
        "Ljava/lang/Object;",
        ">;",
        "Lld7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lbg7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lbg7;

    invoke-direct {v0}, Lbg7;-><init>()V

    sput-object v0, Lbg7;->e:Lbg7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrb7;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Ltb7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    invoke-interface {p1, v0}, Ltb7;->c(Lic7;)V

    .line 2
    invoke-interface {p1}, Ltb7;->a()V

    return-void
.end method
