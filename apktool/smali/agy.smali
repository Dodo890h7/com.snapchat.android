.class public final Lagy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbuj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbuj",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lbuj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbuj",
            "<",
            "Lapf",
            "<",
            "Lahb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lazo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lagy;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lagy;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lbuj;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lapf",
            "<",
            "Lahb;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lazo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lagy;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lagy;->b:Lbuj;

    .line 17
    sget-boolean v0, Lagy;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Lagy;->c:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static a(Lbuj;Ljavax/inject/Provider;)Lbuj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbuj",
            "<",
            "Lapf",
            "<",
            "Lahb;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lazo;",
            ">;)",
            "Lbuj",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lagy;

    invoke-direct {v0, p0, p1}, Lagy;-><init>(Lbuj;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 9
    check-cast p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lagy;->b:Lbuj;

    invoke-interface {v0, p1}, Lbuj;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lagy;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazo;

    iput-object v0, p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->b:Lazo;

    return-void
.end method