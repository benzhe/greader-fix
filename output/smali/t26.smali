.class public final synthetic Lt26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lv26$a;

.field public final f:Lj96;

.field public final g:Lb96;


# direct methods
.method public constructor <init>(Lv26$a;Lj96;Lb96;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt26;->e:Lv26$a;

    iput-object p2, p0, Lt26;->f:Lj96;

    iput-object p3, p0, Lt26;->g:Lb96;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt26;->e:Lv26$a;

    .line 1
    sget-object v1, Lv26;->e:Ljava/util/concurrent/BlockingQueue;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method
