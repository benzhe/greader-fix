.class public final Lq77$l;
.super Lb77;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb77<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq77;


# direct methods
.method public constructor <init>(Lq77;Lq77$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq77$l;->b:Lq77;

    invoke-direct {p0}, Lb77;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$l;->b:Lq77;

    invoke-virtual {v0}, Lq77;->s()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq77$l;->b:Lq77;

    .line 2
    iget-object v0, v0, Lq77;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lq77$l;->b:Lq77;

    .line 5
    invoke-virtual {v0}, Lq77;->v()V

    return-void
.end method
