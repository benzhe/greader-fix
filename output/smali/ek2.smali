.class public final synthetic Lek2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lej2;


# direct methods
.method public constructor <init>(Lej2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek2;->e:Lej2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lek2;->e:Lej2;

    invoke-virtual {v0}, Lej2;->onAdLoaded()V

    return-void
.end method
