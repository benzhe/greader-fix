.class public final synthetic Ldg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lag2;


# direct methods
.method public constructor <init>(Lag2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg2;->e:Lag2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldg2;->e:Lag2;

    const/4 v1, 0x5

    .line 1
    invoke-virtual {v0, v1}, Lag2;->X6(I)V

    return-void
.end method
