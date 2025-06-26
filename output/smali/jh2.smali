.class public final synthetic Ljh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lw52;


# direct methods
.method public constructor <init>(Lw52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljh2;->e:Lw52;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljh2;->e:Lw52;

    invoke-virtual {v0}, Lw52;->onAdLoaded()V

    return-void
.end method
