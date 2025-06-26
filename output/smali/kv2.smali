.class public final Lkv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkv2;->e:Landroid/content/Context;

    iput-object p2, p0, Lkv2;->f:Landroid/view/View;

    iput-object p3, p0, Lkv2;->g:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Llu2;->C:Lrn2;

    .line 2
    iget-object v1, p0, Lkv2;->e:Landroid/content/Context;

    iget-object v2, p0, Lkv2;->f:Landroid/view/View;

    iget-object v3, p0, Lkv2;->g:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lrn2;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Llu2;->E:Lpq2;

    const/16 v2, 0x7e4

    const-wide/16 v3, -0x1

    .line 4
    invoke-virtual {v1, v2, v3, v4, v0}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method
