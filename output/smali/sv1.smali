.class public final synthetic Lsv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpv1;


# direct methods
.method public constructor <init>(Lpv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsv1;->e:Lpv1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsv1;->e:Lpv1;

    .line 2
    invoke-virtual {v0}, Lmv1;->a()V

    return-void
.end method
