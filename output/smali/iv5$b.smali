.class public Liv5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Liv5;


# direct methods
.method public constructor <init>(Liv5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liv5$b;->e:Liv5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Liv5$b;->e:Liv5;

    .line 2
    invoke-virtual {v0}, Liv5;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ltw5;->e:Ltw5;

    sget-object v2, Lx47;->f:Lx47;

    invoke-virtual {v0, v1, v2}, Liv5;->a(Ltw5;Lx47;)V

    :cond_0
    return-void
.end method
