.class public final Lvj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Luj0;


# direct methods
.method public constructor <init>(Luj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvj0;->e:Luj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lvj0;->e:Luj0;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lyj0;->d(Ljava/lang/String;)V

    return-void
.end method
