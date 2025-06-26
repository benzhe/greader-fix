.class public final Lxw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lyw4;


# direct methods
.method public constructor <init>(Lyw4;Z)V
    .locals 0

    iput-object p1, p0, Lxw4;->f:Lyw4;

    iput-boolean p2, p0, Lxw4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxw4;->f:Lyw4;

    .line 1
    iget-object v0, v0, Lyw4;->a:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->D()V

    return-void
.end method
