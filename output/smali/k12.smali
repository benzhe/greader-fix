.class public final synthetic Lk12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lcq1;


# direct methods
.method public constructor <init>(Lcq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk12;->e:Lcq1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk12;->e:Lcq1;

    invoke-virtual {v0}, Lcq1;->a()V

    return-void
.end method
