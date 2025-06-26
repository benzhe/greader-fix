.class public final Lpj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lnj0;


# direct methods
.method public constructor <init>(Lnj0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpj0;->e:Lnj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lpj0;->e:Lnj0;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lyj0;->d(Ljava/lang/String;)V

    return-void
.end method
