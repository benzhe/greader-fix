.class public final Lkn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lap6;

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Lcp6;


# direct methods
.method public constructor <init>(Lap6;Landroid/app/Activity;Lcp6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkn6;->e:Lap6;

    iput-object p2, p0, Lkn6;->f:Landroid/app/Activity;

    iput-object p3, p0, Lkn6;->g:Lcp6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkn6;->e:Lap6;

    invoke-virtual {p1}, Lap6;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lkn6;->f:Landroid/app/Activity;

    iget-object p2, p0, Lkn6;->g:Lcp6;

    iget-object v0, p2, Lcp6;->a:Ljava/lang/String;

    iget-object p2, p2, Lcp6;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Ln56;->C1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lkn6;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
