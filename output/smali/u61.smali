.class public final synthetic Lu61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lq61;


# direct methods
.method public constructor <init>(Lq61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu61;->e:Lq61;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu61;->e:Lq61;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lq61;->d:Z

    return-void
.end method
