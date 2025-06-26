.class public final synthetic Lbl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl5$a;


# static fields
.field public static final a:Lbl5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbl5;

    invoke-direct {v0}, Lbl5;-><init>()V

    sput-object v0, Lbl5;->a:Lbl5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcl5;->d(Landroid/util/JsonReader;)Ltk5$d$d$a$b$d$a;

    move-result-object p1

    return-object p1
.end method
