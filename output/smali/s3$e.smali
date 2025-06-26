.class public Ls3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls3;->b2(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Z

.field public final synthetic h:Landroid/os/Bundle;

.field public final synthetic i:Ls3;


# direct methods
.method public constructor <init>(Ls3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls3$e;->i:Ls3;

    iput p2, p0, Ls3$e;->e:I

    iput-object p3, p0, Ls3$e;->f:Landroid/net/Uri;

    iput-boolean p4, p0, Ls3$e;->g:Z

    iput-object p5, p0, Ls3$e;->h:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls3$e;->i:Ls3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0
.end method
