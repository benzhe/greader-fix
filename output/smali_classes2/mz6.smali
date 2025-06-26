.class public Lmz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Lnz6;


# direct methods
.method public constructor <init>(Lnz6;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmz6;->g:Lnz6;

    iput p2, p0, Lmz6;->e:I

    iput p3, p0, Lmz6;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmz6;->g:Lnz6;

    iget-object v1, v0, Lnz6;->s:Lk07;

    iget-object v2, v0, Lnz6;->m:Ljava/lang/String;

    iget-object v0, v0, Lnz6;->o:Lg07;

    invoke-interface {v0}, Lg07;->b()Landroid/view/View;

    iget v0, p0, Lmz6;->e:I

    iget v2, p0, Lmz6;->f:I

    check-cast v1, Lcx6;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v2, :cond_0

    .line 3
    iget-object v1, v1, Lcx6;->a:Lax6;

    iget-object v1, v1, Lax6;->f:Lcom/noinnion/android/view/progress/DonutProgress;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/noinnion/android/view/progress/DonutProgress;->setProgress(I)V

    :cond_0
    return-void
.end method
