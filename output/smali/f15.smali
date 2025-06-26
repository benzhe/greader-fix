.class public final Lf15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lg15;


# direct methods
.method public constructor <init>(Lg15;)V
    .locals 0

    iput-object p1, p0, Lf15;->e:Lg15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf15;->e:Lg15;

    iget-object v0, v0, Lg15;->c:Lh15;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lh15;->d:Lhw4;

    .line 2
    invoke-virtual {v0}, Lh15;->u()V

    return-void
.end method
