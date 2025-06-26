.class public final Lwe4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg74<",
        "Lxe4;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lwe4;


# instance fields
.field public final e:Lg74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg74<",
            "Lxe4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwe4;

    .line 1
    invoke-direct {v0}, Lwe4;-><init>()V

    sput-object v0, Lwe4;->f:Lwe4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lye4;

    invoke-direct {v0}, Lye4;-><init>()V

    .line 2
    new-instance v1, Lj74;

    .line 3
    invoke-direct {v1, v0}, Lj74;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {v1}, Lc50;->z1(Lg74;)Lg74;

    move-result-object v0

    iput-object v0, p0, Lwe4;->e:Lg74;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lwe4;->b()Lxe4;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lxe4;
    .locals 1

    iget-object v0, p0, Lwe4;->e:Lg74;

    .line 1
    invoke-interface {v0}, Lg74;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxe4;

    return-object v0
.end method
