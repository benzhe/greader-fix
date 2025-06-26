.class public Lwk$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lwk;

.field public final f:Landroid/content/Intent;

.field public final g:I


# direct methods
.method public constructor <init>(Lwk;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwk$b;->e:Lwk;

    .line 3
    iput-object p2, p0, Lwk$b;->f:Landroid/content/Intent;

    .line 4
    iput p3, p0, Lwk$b;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwk$b;->e:Lwk;

    iget-object v1, p0, Lwk$b;->f:Landroid/content/Intent;

    iget v2, p0, Lwk$b;->g:I

    invoke-virtual {v0, v1, v2}, Lwk;->a(Landroid/content/Intent;I)Z

    return-void
.end method
