.class public Lnz6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnz6;->d(Lrz6;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lrz6;

.field public final synthetic f:Ljava/lang/Throwable;

.field public final synthetic g:Lnz6;


# direct methods
.method public constructor <init>(Lnz6;Lrz6;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnz6$a;->g:Lnz6;

    iput-object p2, p0, Lnz6$a;->e:Lrz6;

    iput-object p3, p0, Lnz6$a;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnz6$a;->g:Lnz6;

    iget-object v1, v0, Lnz6;->q:Lgz6;

    .line 2
    iget-object v2, v1, Lgz6;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget v3, v1, Lgz6;->c:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 3
    iget-object v3, v0, Lnz6;->o:Lg07;

    .line 4
    iget-object v0, v0, Lnz6;->h:Liz6;

    .line 5
    iget-object v0, v0, Liz6;->a:Landroid/content/res/Resources;

    .line 6
    iget v1, v1, Lgz6;->c:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 7
    :cond_2
    invoke-interface {v3, v2}, Lg07;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 8
    :cond_3
    iget-object v0, p0, Lnz6$a;->g:Lnz6;

    iget-object v1, v0, Lnz6;->r:Ll07;

    iget-object v2, v0, Lnz6;->m:Ljava/lang/String;

    iget-object v0, v0, Lnz6;->o:Lg07;

    invoke-interface {v0}, Lg07;->b()Landroid/view/View;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
