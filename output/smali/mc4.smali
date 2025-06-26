.class public final Lmc4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg74;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg74<",
        "Lnc4;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lmc4;


# instance fields
.field public final e:Lg74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg74<",
            "Lnc4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc4;

    .line 1
    invoke-direct {v0}, Lmc4;-><init>()V

    sput-object v0, Lmc4;->f:Lmc4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Loc4;

    invoke-direct {v0}, Loc4;-><init>()V

    .line 2
    new-instance v1, Lj74;

    .line 3
    invoke-direct {v1, v0}, Lj74;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {v1}, Lc50;->z1(Lg74;)Lg74;

    move-result-object v0

    iput-object v0, p0, Lmc4;->e:Lg74;

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-object v0, Lmc4;->f:Lmc4;

    .line 1
    invoke-virtual {v0}, Lmc4;->c()Lnc4;

    move-result-object v0

    invoke-interface {v0}, Lnc4;->a()Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmc4;->c()Lnc4;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnc4;
    .locals 1

    iget-object v0, p0, Lmc4;->e:Lg74;

    .line 1
    invoke-interface {v0}, Lg74;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc4;

    return-object v0
.end method
