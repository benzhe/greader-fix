.class public final Lq87$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lq87;


# direct methods
.method public constructor <init>(Lq87;Lq87$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq87$c;->e:Lq87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq87$c;->e:Lq87;

    .line 2
    iget-object v1, v0, Lq87;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v2, Lq87$b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lq87$b;-><init>(Lq87;Lq87$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
