.class public final Ld05;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lh05;


# direct methods
.method public constructor <init>(Lh05;)V
    .locals 0

    iput-object p1, p0, Ld05;->e:Lh05;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ld05;->e:Lh05;

    .line 1
    iget-object v1, v0, Lh05;->j:La05;

    .line 2
    iput-object v1, v0, Lh05;->e:La05;

    return-void
.end method
