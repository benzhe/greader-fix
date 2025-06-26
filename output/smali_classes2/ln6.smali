.class public final Lln6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lap6;

.field public final synthetic f:Lcp6;

.field public final synthetic g:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lap6;Lcp6;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lln6;->e:Lap6;

    iput-object p2, p0, Lln6;->f:Lcp6;

    iput-object p3, p0, Lln6;->g:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lln6;->e:Lap6;

    invoke-virtual {p1}, Lap6;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lln6;->f:Lcp6;

    iget-object p1, p1, Lcp6;->a:Ljava/lang/String;

    iget-object p2, p0, Lln6;->e:Lap6;

    iget-object p2, p2, Lap6;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lln6;->g:Landroid/app/Activity;

    invoke-static {p1, p2}, Ln56;->A1(Landroid/app/Activity;Ljava/io/File;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lln6;->g:Landroid/app/Activity;

    invoke-static {p1}, Lcn6;->d0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lln6;->g:Landroid/app/Activity;

    const p2, 0x7f11015b

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lln6;->g:Landroid/app/Activity;

    iget-object p2, p0, Lln6;->f:Lcp6;

    iget-object p2, p2, Lcp6;->a:Ljava/lang/String;

    iget-object v0, p0, Lln6;->e:Lap6;

    iget-object v0, v0, Lap6;->f:Ljava/lang/String;

    invoke-static {p2, v0}, Ln56;->I0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lln6;->f:Lcp6;

    iget-object v1, v1, Lcp6;->b:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Ln56;->r0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
