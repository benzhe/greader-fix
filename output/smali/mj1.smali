.class public final synthetic Lmj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lek1;


# direct methods
.method public constructor <init>(Lek1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj1;->e:Lek1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lmj1;->e:Lek1;

    invoke-interface {v0}, Lek1;->n()V

    return-void
.end method
